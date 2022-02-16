package model;

public class ViagemDescricao {
	private int codigo;
	private String placa;
	private String horaSaida;
	private String horaChegada;
	private String partida;
	private String destino;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getPartida() {
		return partida;
	}

	public void setPartida(String partida) {
		this.partida = partida;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	
	public String getHoraSaida() {
		return horaSaida;
	}

	public void setHoraSaida(String horaSaida) {
		this.horaSaida = horaSaida;
	}

	public String getHoraChegada() {
		return horaChegada;
	}

	public void setHoraChegada(String horaChegada) {
		this.horaChegada = horaChegada;
	}

	@Override
	public String toString() {
		return "ViagemDescricao [codigo=" + codigo + ", placa=" + placa + ", horaSaida=" + horaSaida + ", horaChegada="
				+ horaChegada + ", partida=" + partida + ", destino=" + destino + "]";
	}

}
