package Model;
public class Login{
    private int id_usuario;
    private String usuario;
    private String senha;

    public int getId_usuario(){
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
    public int getUsuario(){
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
    public int getSenha(){
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
}