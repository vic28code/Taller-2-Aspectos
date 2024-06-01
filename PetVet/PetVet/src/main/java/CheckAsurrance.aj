import java.util.Scanner;
public aspect CheckAsurrance {
	pointcut verifyAssurance(): execution(void main.PetStore.makeAppointment(..));
	
	before(): verifyAssurance() {
        System.out.println("Nombre de la mascota: ");
        Scanner sc = new Scanner(System.in);
        String petName = sc.nextLine();
        System.out.println("Bienvenido " + petName);
    }
	after(): verifyAssurance() {
        System.out.println("La cita fue agendada exitosamente.");
    }
}