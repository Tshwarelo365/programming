// Define the analog pin where the LDR is connected
#define LDR_PIN 34  // ESP32 has multiple analog pins, use any (e.g., 34)
#define RED 12
#define GREEN 13

// LDR characteristics (these values might need to be adjusted based on your LDR)
const float GAMMA = 0.7;
const float RL10 = 50;  // Resistance of LDR at 10 lux (can vary with LDR type)

void setup() {
  Serial.begin(115200);
  pinMode(RED, OUTPUT);
  pinMode(GREEN, OUTPUT);
}

void loop() {
  // Read the analog value from the LDR
  int analogValue = analogRead(LDR_PIN);
 
  // Convert the analog value to voltage (ESP32 has a 12-bit ADC, range 0-4095)
  float voltage = analogValue / 4095.0 * 3.3;
  
  // Convert the voltage to resistance
  float ldrResistance = (3.3 - voltage) * 10000 / voltage;
  
  // Calculate the lux based on the LDR characteristics
  float lux = (pow(RL10 * 1e3 * pow(10, GAMMA) / ldrResistance, (1 / GAMMA)))/10;
  

  // Control the LEDs based on the lux value
  if (lux < 10) {
    digitalWrite(RED, HIGH);
    digitalWrite(GREEN, LOW);
  } else if (lux < 20) {
    digitalWrite(RED, LOW);
    digitalWrite(GREEN, HIGH);
  } else {
    digitalWrite(RED, HIGH);
    digitalWrite(GREEN, LOW);
  }
  
  // Print the lux value
  Serial.print(lux);
  Serial.println(" lux");
  
  delay(1000);  // Delay for 1 second
}

