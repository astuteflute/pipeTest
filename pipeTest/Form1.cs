﻿using System;
using System.Threading.Tasks;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace pipeTest
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private async void btnPressMe_Click(object sender, EventArgs e)
        {
            lblResponse.Text = JsonConvert.DeserializeObject<MonkeyTalk.TalkMember>( MonkeyTalk.MonkeySentence.GetSentence()).sentence;
            lblResponse.Visible = true;
            await Task.Delay(2000);
            lblResponse.Visible = false;
        }
    }
}
