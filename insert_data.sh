#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then

    #get team_id
    NAME_WINNER=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    NAME_OPPONENT=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")

    # Insert Winner
    if [[ -z $NAME_WINNER ]]
    then
      INSERT_NAME_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi

    #Insert Opponnet
    if [[ -z $NAME_OPPONENT ]]
    then
      INSERT_NAME_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    # Get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # Get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    # Insert game's rows
    INSERT_INFO=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    
  fi
done