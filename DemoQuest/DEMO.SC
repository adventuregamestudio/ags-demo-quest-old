// Adventure Creator demo game script file
#define TRASH 2
#define KEY   3

int got_trash=0;

void script1() {
  if (got_trash==1) {
    display ("I think you've had enough rummaging in bins for one day.");
    return;
    }
  if (player.y > 125) {
    display("That would mean jumping up the curb. You'll have to go back round.");
    return;
    }
  display("Holding your nose, you reach into the bin and take out some trash.");
  give_points(2);
  walk_object_to(99,88,100,TRUE,FALSE);
  inv[TRASH]+=1;
  got_trash=1;
  }

void script2() {
  if (player.y < 125) {
    display("Doing that would mean jumping off the curb. Find another way round.");
    return;
    }
  give_points(3);
  walk_object_to_object(99,0,TRUE,FALSE);
  inv[KEY]+=1;
  turn_object_off(0);
  }
