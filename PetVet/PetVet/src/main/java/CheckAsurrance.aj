public aspect CheckAsurrance {
	pointcut verifyAssurance(): execution(void main.PetStore.makeAppointment(..));
}