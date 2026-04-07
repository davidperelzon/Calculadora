import React, { useState } from "react";
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from "react-native";

export default function App() {
  const [valor1, setValor1] = useState(0);
  const [valor2, setValor2] = useState(0)
  const [resultado, setResultado] = useState(0);

  function somar() {
    setResultado(Number(valor1) + Number(valor2));
  }

  function subtrair() {
    setResultado((valor1) - (valor2));
  }

  function multiplicar() {
    setResultado((valor1) * (valor2));
  }

  function dividir() {
    setResultado((valor1) / (valor2));
  }

  return (
    <View style={estilos.container}>
      <Text style={estilos.titulo}>CALCULADORA</Text>

      <TextInput
        placeholder="Valor 1"
        style={estilos.input}
        keyboardType="numeric"
        value={valor1}
        onChangeText={setValor1}
      />

      <TextInput
        placeholder="Valor 2"
        style={estilos.input}
        keyboardType="numeric"
        value={valor2}
        onChangeText={setValor2}
      />

      <View style={estilos.areaBotoes}>
        <TouchableOpacity style={[estilos.botao, estilos.somar]} onPress={somar}>
          <Text style={estilos.textoBotao}>SOMAR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.subtrair]} onPress={subtrair}>
          <Text style={estilos.textoBotao}>SUBTRAIR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.multiplicar]} onPress={multiplicar}>
          <Text style={estilos.textoBotao}>MULTIPLICAR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.dividir]} onPress={dividir}>
          <Text style={estilos.textoBotao}>DIVIDIR</Text>
        </TouchableOpacity>
      </View>

      <View style={estilos.resultadoBox}>
        <Text style={estilos.resultadoTexto}>{resultado}</Text>
      </View>
    </View>
  );
}

const estilos = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#f2f2f2",
  },

  titulo: {
    backgroundColor: "#b7c7e2",
    padding: 12,
    borderRadius: 10,
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 20,
    width: 250,
    textAlign: "center",
  },

  input: {
    width: 250,
    padding: 10,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: "#999",
    marginBottom: 10,
    backgroundColor: "#fff",
  },

  areaBotoes: {
    flexDirection: "row",
    justifyContent: "space-between",
    width: 250,
    marginVertical: 15,
  },

  botao: {
    flex: 1,
    marginHorizontal: 2,
    padding: 10,
    borderRadius: 5,
    alignItems: "center",
  },

  textoBotao: {
    color: "#fff",
    fontSize: 11,
    fontWeight: "bold",
  },

  somar: {
    backgroundColor: "green",
  },

  subtrair: {
    backgroundColor: "deeppink",
  },

  multiplicar: {
    backgroundColor: "crimson",
  },

  dividir: {
    backgroundColor: "royalblue",
  },

  resultadoBox: {
    backgroundColor: "black",
    width: 250,
    padding: 12,
    borderRadius: 8,
    marginTop: 10,
    alignItems: "center",
  },

  resultadoTexto: {
    color: "#fff",
    fontSize: 22,
    fontWeight: "bold",
  },
});
