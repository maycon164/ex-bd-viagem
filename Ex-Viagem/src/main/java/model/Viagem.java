package model;

public class Viagem {	
	
	private int codigo;
	private  String nome;
	private  String placa;
	private  String marca;
	private int ano ;
	private String descricao;
	
	public Viagem(int codigo, String nome, String placa, String marca, int ano, String descricao) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.placa = placa;
		this.marca = marca;
		this.ano = ano;
		this.descricao = descricao;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}


	public int getAno() {
		return ano;
	}


	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return "Viagem [codigo=" + codigo + ", nome=" + nome + ", placa=" + placa + ", marca=" + marca + ", ano=" + ano
				+ ", descricao=" + descricao + "]";
	}
	
}
