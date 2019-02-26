byte command[3];
byte response[4];

//输入命令
byte command0[3] = {0x53, 0xFE, 0x45};
byte command1[3] = {0x53, 0xFD, 0x45};
byte command2[3] = {0x53, 0xFB, 0x45};
byte command3[3] = {0x53, 0xF7, 0x45};
byte command4[3] = {0x53, 0xEF, 0x45};
byte command5[3] = {0x53, 0xDF, 0x45};
byte command6[3] = {0x53, 0xBF, 0x45};
byte command7[3] = {0x53, 0x7F, 0x45};

//返回响应
byte response0[4] = { 0x53, 0xFE, 0x4F, 0x4B };
byte response1[4] = { 0x53, 0xFD, 0x4F, 0x4B };
byte response2[4] = { 0x53, 0xFB, 0x4F, 0x4B };
byte response3[4] = { 0x53, 0xF7, 0x4F, 0x4B };
byte response4[4] = { 0x53, 0xEF, 0x4F, 0x4B };
byte response5[4] = { 0x53, 0xDF, 0x4F, 0x4B };
byte response6[4] = { 0x53, 0xBF, 0x4F, 0x4B };
byte response7[4] = { 0x53, 0x7F, 0x4F, 0x4B };
                   
void setup() {
  //打开控制开关的引脚
  pinMode(2, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(7, OUTPUT);

  //设置数据波特率
  Serial.begin(9600);

  while(!Serial){
  }

  //初始化
  memset(command, 0, sizeof(command));
  memset(response, 0, sizeof(response));
}

void loop() {

  delay(50);    // 这个时间太小会出现无法预测的问题
  memset(command, 0, sizeof(command));
  
  if (Serial.available() != 3){
    while(Serial.available() > 0){
      Serial.read();
    }
    return;
  }

  byte count = 0;
  while(Serial.available() > 0){
    command[count++] = Serial.read();        
  }
  
  if (arraycmp(command, command0) == 0){      
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);
    digitalWrite(7, LOW);
    zresponse(response0);
  }

  if (arraycmp(command, command1) == 0){      
    digitalWrite(2, HIGH);
    digitalWrite(4, LOW);
    digitalWrite(7, LOW);    
    zresponse(response1);
  }

  if (arraycmp(command, command2) == 0){      
    digitalWrite(2, LOW);
    digitalWrite(4, HIGH);
    digitalWrite(7, LOW);    
    zresponse(response2);
  }

  if (arraycmp(command, command3) == 0){      
    digitalWrite(2, HIGH);
    digitalWrite(4, HIGH);
    digitalWrite(7, LOW);
    zresponse(response3);
  }

  if (arraycmp(command, command4) == 0){      
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);
    digitalWrite(7, HIGH);
    zresponse(response4);
  }

  if (arraycmp(command, command5) == 0){      
    digitalWrite(2, HIGH);
    digitalWrite(4, LOW);
    digitalWrite(7, HIGH);
    zresponse(response5);
  }

  if (arraycmp(command, command6) == 0){      
    digitalWrite(2, LOW);
    digitalWrite(4, HIGH);
    digitalWrite(7, HIGH);
    zresponse(response6);
  }

  if (arraycmp(command, command7) == 0){      
    digitalWrite(2, HIGH);
    digitalWrite(4, HIGH);
    digitalWrite(7, HIGH);
    zresponse(response7);
  }
}

int arraycmp(byte *a, byte *b){
  for (int index = 0; index < 3; index++){
    if (a[index] != b[index])
      return -1;
  }

  return 0;
}

void zresponse(byte *data){
  Serial.write(data[0]);
  Serial.write(data[1]);
  Serial.write(data[2]);
  Serial.write(data[3]);
}
