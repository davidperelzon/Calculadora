import React from "react";
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from "react-native";

export default function Calculadora() {
  return (
    <View style={estilos.container}>

      <Text style={estilos.titulo}>CALCULADORA</Text>

      <TextInput
        placeholder="valor 01"
        style={estilos.input}
      />

      <TextInput
        placeholder="valor 02"
        style={estilos.input}
      />

      <View style={estilos.areaBotoes}>
        
        <TouchableOpacity style={[estilos.botao, estilos.somar]}>
          <Text style={estilos.textoBotao}>SOMAR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.subtrair]}>
          <Text style={estilos.textoBotao}>SUBTRAIR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.multiplicar]}>
          <Text style={estilos.textoBotao}>MULTIPLICAR</Text>
        </TouchableOpacity>

        <TouchableOpacity style={[estilos.botao, estilos.dividir]}>
          <Text style={estilos.textoBotao}>DIVIDIR</Text>
        </TouchableOpacity>

      </View>

      <View style={estilos.resultadoBox}>
        <Text style={estilos.resultadoTexto}>0</Text>
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