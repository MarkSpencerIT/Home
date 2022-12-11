# Audio File to Text
# pip install SpeechRecognitionimport speech_recognition as srdef audio_to_text(audio_file):
    bot = sr.Recognizer()
    with sr.AudioFile(audio_file) as s:
        audio = bot.record(s)
        try:
            text = bot.recognize_google(audio)
            return text
        except Exception as e:
            print(e)
            return "Error"audio_to_text("test.wav")
