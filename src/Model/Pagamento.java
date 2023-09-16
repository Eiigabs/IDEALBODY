package Model;

public class Pagamento {

	private int Id_pagamento;
	private int Cliente;
	private String Nome_titular;
	private String Cpf_titutar;
	private int Num_cartao;
	private String Vencimento_cartao;
	private int Cvc;
	private int Plano;
	private int Unidade;
	
	public int getId_pagamento() {
		return Id_pagamento;
	}
	public void setId_pagamento(int id_pagamento) {
		Id_pagamento = id_pagamento;
	}
	public int getCliente() {
		return Cliente;
	}
	public void setCliente(int cliente) {
		Cliente = cliente;
	}
	public String getNome_titular() {
		return Nome_titular;
	}
	public void setNome_titular(String nome_titular) {
		Nome_titular = nome_titular;
	}
	public String getCpf_titutar() {
		return Cpf_titutar;
	}
	public void setCpf_titutar(String cpf_titutar) {
		Cpf_titutar = cpf_titutar;
	}
	public int getNum_cartao() {
		return Num_cartao;
	}
	public void setNum_cartao(int num_cartao) {
		Num_cartao = num_cartao;
	}
	public int getCvc() {
		return Cvc;
	}
	public void setCvc(int cvc) {
		Cvc = cvc;
	}
	public int getPlano() {
		return Plano;
	}
	public void setPlano(int plano) {
		Plano = plano;
	}
	public int getUnidade() {
		return Unidade;
	}
	public void setUnidade(int unidade) {
		Unidade = unidade;
	}
	public String getVencimento_cartao() {
		return Vencimento_cartao;
	}
	public void setVencimento_cartao(String vencimento_cartao) {
		Vencimento_cartao = vencimento_cartao;
		
	}
	
	
}
