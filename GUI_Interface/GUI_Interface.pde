Button d6 = new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
Button d10 = new Button(340, 10, 150, 50, "Slå med 10s terning!", this);
Button d12 = new Button(10, 100, 150, 50, "Slå med 12s terning!", this);
Button d20 = new Button(340, 100, 150, 50, "Slå med 20s terning!", this);

int sum;
int terningeKast;

void setup() {
  size(500, 300); 

  d6.addAction(new GUI_Interface.Action() {   
    public void execute() {
      terningeKast = int(random(1, 7));
      sum += terningeKast;
    }
  }
  );

  d10.addAction(new GUI_Interface.Action() {   
    public void execute() {
      terningeKast = int(random(1, 11));
      sum += terningeKast;
    }
  }
  );

  d12.addAction(new GUI_Interface.Action() {   
    public void execute() {
      terningeKast = int(random(1, 13));
      sum += terningeKast;
    }
  }
  );

  d20.addAction(new GUI_Interface.Action() {   
    public void execute() {
      terningeKast = int(random(1, 21));
      sum += terningeKast;
    }
  }
  );
}

void draw() {
  clear();
  d6.display();
  d10.display();
  d12.display();
  d20.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  d6.click();
  d10.click();
  d12.click();
  d20.click();
}
