/*
 | TP1 | Tmm2 | FdA | UNLP |
 ----------- TP2: Prototipo 1 ---------------
 Comision: Lisandro | Prof.Lisandro Peralta.
 Alumnas: 
 D'Angelo Victoria(88529/7).
 Besnati Victoria(88151/1).
 Nayla Aguilar(88106/6).
 -------------------------------------------
 Video: 
 -------------------------------------------
 */

import ddf.minim.*;

Minim minim;
AudioPlayer musica1; 
AudioPlayer gato1; 
AudioPlayer gato2; 
AudioPlayer gato3; 
AudioPlayer victoria; 
AudioPlayer powerup;
AudioPlayer derrota; 


import fisica.*;
FWorld mundo;

boolean ganar = false;
boolean perder = false;
boolean cambio = false;
boolean viento = false;
boolean muchoviento = false;
boolean perdervida = false;
boolean pw = false;
int nro;
int audio = 0;
int ID;
int vida = 10;

PImage [] gatubi = new PImage [6]; 
PImage [] corazon = new PImage [3]; 
PImage tm;
PImage tl; 
PImage tn; 

juego j;

void setup() {

  size(1024, 768);

  //efectos sonidos - musica
  minim = new Minim (this);
  musica1=minim.loadFile("musica1.mp3", 2048); //intrumental de fondo
  gato1=minim.loadFile("gato1.mp3", 2048); //colisiones
  gato2=minim.loadFile("gato2.mp3", 2048); //colisiones
  gato3=minim.loadFile("gato3.mp3", 2048); //colisiones
  powerup=minim.loadFile("powerup.mp3", 2048); //power up
  victoria=minim.loadFile("victoria.mp3", 2048); //estado ganar
  derrota=minim.loadFile("derrota.mp3", 2048);  //estado perder

  surface.setTitle("--Michiball--");
  Fisica.init(this);

  letra =createFont("Blueberry Days.ttf", 60);

  for (int i = 0; i<gatubi.length; i++) {
    gatubi[i]= loadImage("michi"+i+".png");
  }
  for (int i = 1; i<corazon.length; i++) {
    corazon[i]= loadImage("corazon"+i+".png");
  }
  tm = loadImage("tarjetamilo.png");
  tl = loadImage("tarjetalucy.png");
  tn = loadImage("tarjetanygma.png");

  j = new juego();
}
void draw() {
  j.dibujar();
  if (audio == 1) {
    gato1.rewind();
    gato1.play();
  }
  if (audio == 2) {
    gato2.rewind();
    gato2.play();
  }
  if (audio == 3) {
    gato3.rewind();
    gato3.play();
  }
 
}
void contactStarted(FContact contacto) {

  FBody body1 = contacto.getBody1();
  FBody body2 = contacto.getBody2();

  String nombre1 = nombre(body1);
  String nombre2 = nombre(body2);

  //--------------------------------------------------------------------------------------------------------------------------------------
  //-------------------- Colision con caja------------------- Ganar
  if (nombre1.equals("gato") && nombre2.equals("caja")) {
    ganar = true;
  }
  if (nombre1.equals("caja") && nombre2.equals("gato")) {
    ganar = true;
  }
  //-------------------- Colision con Piso ------------------- Perder
  if (nombre1.equals("gato") && nombre2.equals("piso")) {
    perder = true;
  }
  if (nombre1.equals("piso") && nombre2.equals("gato")) {
    perder = true;
  }
  //-------------------- Colision con obstaculos-------------------Menos vida
  if (nombre1.equals("ob") && nombre2.equals("gato") || nombre1.equals("gato") && nombre2.equals("ob")) {
    vida--;
    perdervida = true;
    audio = int(random(1, 4));
  } else {
    perdervida = false;
    audio = 0;
  }
  if (vida <= 0) {
    perder = true;
  }
  //-----------------------------------------------------------
  if (nombre1.equals("plataforma") && nombre2.equals("gato") || nombre1.equals("gato") && nombre2.equals("plataforma")) {
    cambio=true;
  } else {
    cambio=false;
  }
  //-------------------- Colision con powerup-------------------
  if (nombre1.equals("gato") && nombre2.equals("powerup")) {
    pw = true;
    nro = int(random(1, 10));
  } else {
    pw = false;
  }
  if (nombre1.equals("powerup") && nombre2.equals("gato")) {
    pw = true;
    nro = int(random(1, 10));
    powerup.rewind();
    powerup.play();
  } else {
    pw = false;
  }
}
void contactPersisted(FContact contacto) {

  FBody body1 = contacto.getBody1();
  FBody body2 = contacto.getBody2();

  String nombre1 = nombre(body1);
  String nombre2 = nombre(body2);

  if (nombre1.equals("plataforma") && nombre2.equals("gato") || nombre1.equals("gato") && nombre2.equals("plataforma")) {
  } else {

  }
}
