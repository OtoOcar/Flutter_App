# flutter_app

# Flutter App: Calculadora, Media Ponderada y Agenda

Este proyecto es una aplicación Flutter sencilla que demuestra el manejo de rutas con **GoRouter**, uso de **Drawer** para navegación lateral, y tres funcionalidades básicas:

- Calculadora básica (sumar, restar, multiplicar, dividir)  
- Cálculo de media ponderada de 5 notas con porcentajes  
- Agenda simple para agregar, listar y eliminar contactos  

---

## 📱 Funcionalidades

### 1. Calculadora Básica
Permite ingresar dos números y realizar operaciones aritméticas básicas con botones.

### 2. Media Ponderada
Calcula la media ponderada de 5 notas con porcentajes ingresados por el usuario, mostrando resultados individuales y total.

### 3. Agenda Simple
Permite agregar contactos (nombre y teléfono), listarlos y eliminarlos.

---

## 🚀 Cómo ejecutar el proyecto

### Requisitos

- Flutter SDK instalado ([Flutter installation guide](https://flutter.dev/docs/get-started/install))  
- Editor de código (VSCode, Android Studio, etc.)  
- Dispositivo emulador o físico conectado  

### Pasos para ejecutar

1. Clonar el repositorio:

   ```bash
   git clone [https://github.com/tu_usuario/tu_repositorio.git](https://github.com/OtoOcar/Flutter_App.git)


2. Obtener dependencias:

flutter pub get


3. Ejecutar la app en dispositivo/emulador:

flutter run

## 🗂 Estructura del proyecto

/lib/src/feature/screens/
Pantallas de la aplicación: home_screen.dart, calculadora_screen.dart, ponderada_screen.dart, agenda_screen.dart

/lib/src/feature/widgets/flutter_app_drawer.dart
Drawer personalizado para navegación lateral

/lib/src/routes/flutter_app_router.dart
Configuración de rutas con GoRouter

## 🔍 Explicación técnica

GoRouter se utiliza para el manejo sencillo de rutas declarativas y navegación.

Drawer permite acceso rápido a las distintas pantallas desde cualquier lugar.

Cada pantalla es un StatefulWidget o StatelessWidget según la necesidad, con separación clara de lógica y presentación.

Los cálculos y gestión de estado están implementados con setState() para simplicidad.



