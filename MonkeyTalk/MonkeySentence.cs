using Newtonsoft.Json;
using System;


namespace MonkeyTalk
{
    public class MonkeySentence
    {
        private static int count = 0;
        private static string[] sentences = new string[] { "ooo ooo ooo", "eee eech eeie", "ooo hooo eeiee" };

        public static string GetSentence()
        {
            if (count < sentences.Length)
            {
                ++count;
            }
            else
            {
                count = 1;
            }

            return JsonConvert.SerializeObject( new TalkMember( sentences[count-1]));
        }
    }
}
