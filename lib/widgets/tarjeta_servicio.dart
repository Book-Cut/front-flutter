class TarjetaServicio extends {

  final String nombre;
  final Stream precio;
  final String icono;

  const TarjetaServicio ({
  super.key,
  required this.nombre,
  required this.precio,
  required this.icono,

 });
  
@override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              icono,
              style: const TextStyle(
                fontSize: 35,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              nombre,
              textAlign: TextAlign.center,

              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              precio,

              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD28B20),
              ),
            ),

            const SizedBox(height: 8),

            SizedBox(
              height: 35,

              child: ElevatedButton(
                onPressed: () {

                  // Próximamente:
                  // pantalla para reservar cita

                },

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF222222),

                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8),
                  ),
                ),

                child: const Text(
                  'RESERVAR',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



