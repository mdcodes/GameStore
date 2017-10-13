using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameSnipeWebsite.Tests
{
    [TestFixture]
    public class Tests
    {
        [Test]
        public void AddGameShouldWork()
        {
            //Create the dummy game to test 
            Game game = new Game();

            //Insert the game using the defined function
            string result = game.AddGame(1, "Fortnite", 20.00, 1, "Unreal Games", "Survival");

            Assert.AreEqual(result, "Game Added");
        }

        public void EditGameShouldWork()
        {
            //Create the dummy game to test 
            Game game = new Game();

            //Insert the game using the defined function
            string result = game.EditGame(1, "Fortnite", 25.00, "Unreal Games", "Shooter");

            Assert.AreEqual(result, "Game Edited");
        }

        public void DeleteGameShouldWork()
        {
            //Create the dummy game to test 
            Game game = new Game();

            //Insert the game using the defined function
            string result = game.DeleteGame(1);

            Assert.AreEqual(result, "Game Deleted");
            
        }

        public void AddInvalidGame()
        {
            //Create the dummy game to test 
            Game game = new Game();

            //Insert the game using the defined function
            string result = game.AddGame("1", "Fortnite", 20.00, 1, "Unreal Games");
            //ID is a string not an int and category is not inserted
            Assert.AreEqual(result, "Game Added");


        }

       

        public void EditEventShouldWork()
        {
            //Create the dummy event to test 
            Event event = new Event();

            //Insert the event using the defined function
            string result = event.EditEvent(1, 2, "Fornite 1v1 Battle", "15/10/2017", "8:00pm", "Digital", 5.00);

            Assert.AreEqual(result, "Event Edited");
    

        public void DeleteEventShouldWork()
        {
            //Create the dummy event to test 
            Event event = new Event();

            //Insert the event using the defined function
            string result = event.DeleteEvent(1);

            Assert.AreEqual(result, "Event Deleted");
        
        }

        public void AddInvalidEvent()
        {
            //Create the dummy event to test 
            Event event = new Event();

            //Insert the event using the defined function
            string result = event.AddGame(1, "Fornite Tourney", "10/10/2017", "7:00pm", "", 2.00);
            //No creatorId and location is blank

            Assert.AreEqual(result, "Event invalid");
        }

        public void ProduceReport()
        {
            //Create the dummy report to test 

            //Game testGame = new Game(x, x, x)

            //Insert the game using the defined function

            //TODO: Add the addGame method call



            Assert.Pass();
        }

        public void ProduceReportInvalid()
        {
            //Create the dummy game to test 

            //Game testGame = new Game(x, x, x)

            //Insert the game using the defined function

            //TODO: Add the addGame method call



            Assert.Pass();
        }
    }
}

