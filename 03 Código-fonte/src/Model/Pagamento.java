package Model;

public class Pagamento {

	private int Id_pagamento;
	private int Cliente;
	private String Nome_titular;
	private String Cpf_titutar;
	private String Num_cartao;
	private String Vencimento_cartao;
	private int Cvc;
	private int Plano;
	private int Unidade;
	private int Id_cliente;
	private String nome;
	private String cpf;
	private String data;
	private String telefone;
	private String email;
	
	
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
	public String getNum_cartao() {
		return Num_cartao;
	}
	public void setNum_cartao(String num_cartao) {
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
	public int getId_cliente() {
		return Id_cliente;
	}
	public void setId_cliente(int id_cliente) {
		this.Id_cliente = id_cliente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
		
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
