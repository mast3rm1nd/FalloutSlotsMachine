using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using Xceed.Wpf.Toolkit;
using System.IO;


namespace FalloutSlotsMachine
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int playersSkill = 50;
        int playersMoney = 500;

        List<string> gamblingPhrases = new List<string>();

        public MainWindow()
        {
            InitializeComponent();
            //SkillPercent_IntegerUpDown.Focusable = false;
            //var perc = new List<string>();
            //var res = "";


            //for (int i = 0; i <= 300; i++)
            //{
            //    double actualPercent = ((double)i / 3);
            //    int percentToRng = (int)(actualPercent * (_MAXIMUM_POSSIBLE_RNG_PERCENT / 100));

            //    res += string.Format("{0}% of skill = {1}% to win; For rng = {2}", i, actualPercent, percentToRng) + Environment.NewLine;
            //}
            //File.WriteAllText("results.txt", res);

            gamblingPhrases.Add("Давай, детка! Папочке нужна новая плазменная винтовка!");
            gamblingPhrases.Add("Давай, детка! Папочке нужны патроны!");
            gamblingPhrases.Add("Давай, детка! Папочке нужно заправить свою тачку!");
            gamblingPhrases.Add("Давай, детка! Папочке нужны стимпаки!");
            gamblingPhrases.Add("Давай, детка! Папочке нужна парочка гранат!");
            gamblingPhrases.Add("Давай, детка! Папочке нужен силовой кулак!");
        }


        Random rnd = new Random();
        bool GetGambleResult()
        {
            double actualPercent = ((double)playersSkill / 3);

            var rng = rnd.NextDouble() * 100;

            if (actualPercent >= rng)
                return true;
            else
                return false;
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            if (SkillPercent_IntegerUpDown.IsFocused)
                return;

            int amount;

            switch(e.Key)
            {
                case Key.D1: amount = 5; break;
                case Key.D2: amount = 10; break;
                case Key.D3: amount = 15; break;
                case Key.D4: amount = 20; break;
                case Key.D5: amount = 25; break;
                default: return;
            }

            if (playersMoney < amount)
                return;                                     // тут бы издать звук невозможности

            if (GetGambleResult())
                UpdatePlayersMoney(amount * 4);             // тут бы издать звук выигрыша
            else
                UpdatePlayersMoney(-amount);                // тут бы издать звук проигрыша

            if (amount == 25)
                Randomize25BuckLabel();
        }




        void UpdatePlayersMoney(int moneyToAdd)
        {
            playersMoney += moneyToAdd;
            MoneyLeft_Label.Content = string.Format("${0:N0}", playersMoney);
        }


        private void SkillPercent_IntegerUpDown_ValueChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            if(SkillPercent_IntegerUpDown.Value != null)
                playersSkill = (int)SkillPercent_IntegerUpDown.Value;
            //this.Focus();
        }




        void Randomize25BuckLabel()
        {
            Variant_5_Label.Content = String.Format("5. Бросить $25. {0}", gamblingPhrases[rnd.Next(gamblingPhrases.Count())]);
        }
    }
}
