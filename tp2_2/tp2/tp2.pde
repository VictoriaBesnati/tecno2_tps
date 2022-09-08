/*
 | TP1 | Tmm2 | FdA | UNLP |
 ----------- TP2: Prototipo 1 ---------------
 Comision: Lisandro | Prof.Lisandro Peralta.
 Alumnas:  D'Angelo Victoria(88529/7).
 Besnati Victoria(88151/1).
 Nayla Aguilar(88106/6).
 -------------------------------------------
 Video: https://youtu.be/B0gRCvSjvxM
 -------------------------------------------
 */

import ddf.minim.*;

Minim minim;
AudioPlayer musica; //musica fondo
AudioPlayer maullido; 
AudioPlayer victoria; 
AudioPlayer derrota; 

import fisica.*;
FWorld mundo;

boolean ganar = false;
boolean perder = false;
boolean pw = false;
int nro;
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
  minim = new Minim (this);
  musica=minim.loadFile("musica.mp3", 2048); //intrumental de fondo
  maullido=minim.loadFile("maullido.mp3", 2048); //colisiones
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
  if (nombre1.equals("ob") && nombre2.equals("gato")) {
    vida--;
    maullido.rewind();
    maullido.play();
  }
  if (nombre1.equals("gato") && nombre2.equals("ob")) {
    vida--;
    maullido.play();
  }
  if (vida <= 0) {
    perder = true;
    maullido.play();
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
  } else {
    pw = false;
  }
}
void atraer() {
}
