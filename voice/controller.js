let recognition;
let currentLang = "en-IN"; // default English

const btn = document.getElementById("voiceBtn");
const output = document.getElementById("voice-text");
const langSelect = document.getElementById("languageSelect");

/* -------- Language Change -------- */
langSelect.addEventListener("change", () => {
    currentLang = langSelect.value;
    output.innerText =
        currentLang === "ta-IN"
            ? "🌐 மொழி: தமிழ்"
            : "🌐 Language: English";
});

/* -------- Button Click -------- */
btn.addEventListener("click", () => {

    const SpeechRecognition =
        window.SpeechRecognition || window.webkitSpeechRecognition;

    if (!SpeechRecognition) {
        output.innerText = "❌ Speech recognition not supported";
        return;
    }

    recognition = new SpeechRecognition();
    recognition.lang = currentLang; // ✅ IMPORTANT
    recognition.interimResults = false;
    recognition.continuous = false;

    recognition.start();

    output.innerText =
        currentLang === "ta-IN"
            ? "🎧 கேட்கிறது..."
            : "🎧 Listening...";

    recognition.onresult = (event) => {
        const text = event.results[0][0].transcript.toLowerCase();
        output.innerText =
            (currentLang === "ta-IN"
                ? "🗣️ நீங்கள் சொன்னது: "
                : "🗣 You said: ") + text;

        handleCommand(text);
    };

    recognition.onerror = (event) => {
        output.innerText = "❌ Error: " + event.error;
    };
});

//* -------- Command Handler -------- */
function handleCommand(cmd) {

    cmd = cmd.toLowerCase();

    /* ---------- BALANCE ---------- */
    if (
        cmd.includes("balance") ||
        cmd.includes("bank balance") ||
        cmd.includes("account balance") ||
        cmd.includes("my balance") ||
        cmd.includes("இருப்பு") ||
        cmd.includes("பேலன்ஸ்")
    ) {
        const balEl = document.getElementById("accountBalance");

        if (!balEl || balEl.innerText.trim() === "") {
            speak(
                currentLang === "ta-IN"
                    ? "மன்னிக்கவும், கணக்கு இருப்பு கிடைக்கவில்லை"
                    : "Sorry, account balance is not available"
            );
            return;
        }

        const bal = balEl.innerText.trim();

        speak(
            currentLang === "ta-IN"
                ? `உங்கள் கணக்கு இருப்பு ரூபாய் ${bal}`
                : `Your current bank balance is rupees ${bal}`
        );
    }

    /* ---------- ACCOUNT SUMMARY ---------- */
    else if (
        cmd.includes("summary") ||
        cmd.includes("account summary") ||
        cmd.includes("சுருக்கம்")
    ) {
        const summary = document.getElementById("accountSummary").innerText;
        speak(
            currentLang === "ta-IN"
                ? "உங்கள் கணக்கு விவரம் இதோ. " + summary
                : "Here is your account summary. " + summary
        );
    }
    
/* ---------- MONTHLY SPENDING ---------- */
else if (
    cmd.includes("spending") ||
    cmd.includes("spent") ||
    cmd.includes("செலவு")
) {
    let spending = "0";

    const el = document.querySelector("#spendingData");

    if (el !== null) {
        spending = el.textContent.trim();
    }

    console.log("SPENDING VALUE:", spending); // <-- debugging proof

    speak(
    currentLang === "ta-IN"
        ? `இந்த மாதம் நீங்கள் செலவு செய்த தொகை ரூபாய் ${spending}`
        : `Your total spending this month is rupees ${spending}`
);
}


    /* ---------- LAST TRANSACTIONS ---------- */
    else if (
        cmd.includes("transaction") ||
        cmd.includes("transactions") ||
        cmd.includes("history") ||
        cmd.includes("last transaction") ||
        cmd.includes("பரிவர்த்தனை")
    ) {
        const tx = document.getElementById("txData").innerText;
        speak(
            currentLang === "ta-IN"
                ? "உங்கள் சமீபத்திய பரிவர்த்தனைகள். " + tx
                : "Here are your last transactions. " + tx
        );
    }

    /* ---------- TRANSFER ---------- */
    else if (
        cmd.includes("transfer") ||
        cmd.includes("send money") ||
        cmd.includes("money transfer") ||
        cmd.includes("அனுப்பு")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "பணம் மாற்றும் பக்கத்தை திறக்கிறது"
                : "Opening money transfer page"
        );
        window.location.href = "transfer.php";
    }

    /* ---------- DASHBOARD ---------- */
else if (
    cmd.includes("dashboard") ||
    cmd.includes("home") ||
    cmd.includes("main page") ||
    cmd.includes("டாஷ்போர்டு") ||
    cmd.includes("முகப்பு")
) {
    speak(
        currentLang === "ta-IN"
            ? "டாஷ்போர்டு பக்கத்தை திறக்கிறது"
            : "Opening dashboard"
    );
    window.location.href = "dashboard.php";
}


/* ---------- TRANSACTIONS ---------- */
else if (
    cmd.includes("transaction page ") ||
    cmd.includes("transactions page") ||
    cmd.includes("history") ||
    cmd.includes("statement") ||
    cmd.includes("recent transactions") ||
    cmd.includes("பரிவர்த்தனை") ||
    cmd.includes("வரலாறு")
) {
    speak(
        currentLang === "ta-IN"
            ? "பரிவர்த்தனை டிரான்ஸாக்ஷன் பக்கம் திறக்கப்படுகிறது"
            : "Opening Transaction page"
    );
    window.location.href = "transactions.php";
}

    

    /* ---------- DEPOSIT ---------- */
    else if (
        cmd.includes("deposit") ||
        cmd.includes("add money") ||
        cmd.includes("பணம் சேர்")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "பணம் சேர்க்கும் பக்கத்தை திறக்கிறது"
                : "Opening deposit page"
        );
        window.location.href = "deposit.php";
    }

    /* ---------- WITHDRAW ---------- */
    else if (
        cmd.includes("withdraw") ||
        cmd.includes("take money") ||
        cmd.includes("பணம் எடு")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "பணம் எடுக்கும் பக்கத்தை திறக்கிறது"
                : "Opening withdraw page"
        );
        window.location.href = "withdraw.php";
    }

    /* ---------- INVESTMENT ---------- */
    else if (
        cmd.includes("investment") ||
        cmd.includes("invest") ||
        cmd.includes("முதலீடு")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "முதலீட்டு பக்கத்தை திறக்கிறது"
                : "Opening investment page"
        );
        window.location.href = "investment.php";
    }

    /* ---------- LOANS ---------- */
    else if (
        cmd.includes("loan") ||
        cmd.includes("loans") ||
        cmd.includes("கடன்")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "கடன் பக்கத்தை திறக்கிறது"
                : "Opening loan page"
        );
        window.location.href = "loan.php";
    }

    /* ---------- PROFILE ---------- */
    else if (
        cmd.includes("profile") ||
        cmd.includes("settings") ||
        cmd.includes("சுயவிவரம்")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "அமைப்புகள் பக்கத்தை திறக்கிறது"
                : "Opening profile settings"
        );
        window.location.href = "profile.php";
    }

    /* ---------- LOGOUT ---------- */
    else if (
        cmd.includes("logout") ||
        cmd.includes("log out") ||
        cmd.includes("வெளியேறு")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "நீங்கள் வெளியேறுகிறீர்கள்"
                : "You are now logging out"
        );
        window.location.href = "../logout.php";
    }

    /* ---------- GREETINGS ---------- */
    else if (
        cmd.includes("hello") ||
        cmd.includes("hi") ||
        cmd.includes("good morning") ||
        cmd.includes("good evening") ||
        cmd.includes("வணக்கம்")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "வணக்கம். நேக்சஸ் வங்கிக்கு வரவேற்கிறோம். நான் உங்களுக்கு எப்படி உதவலாம்?"
                : "Hello. Welcome to Nexus Bank. How may I assist you today?"
        );
    }

    /* ---------- HELP ---------- */
    else if (
        cmd.includes("help") ||
        cmd.includes("commands") ||
        cmd.includes("உதவி")
    ) {
        speak(
            currentLang === "ta-IN"
                ? "நீங்கள் இருப்பு, பணம் அனுப்பு, பரிவர்த்தனை, முதலீடு போன்ற கட்டளைகளை சொல்லலாம்"
                : "You can ask for balance, transfer money, transactions, investments and more"
        );
    }

    /* ---------- DEFAULT ---------- */
    else {
        speak(
            currentLang === "ta-IN"
                ? "மன்னிக்கவும், உங்கள் கட்டளையை புரிந்துகொள்ள முடியவில்லை"
                : "Sorry, I did not understand the command"
        );
    }
}


/* -------- Speak Function -------- */
function speak(text) {
    const msg = new SpeechSynthesisUtterance(text);
    msg.lang = currentLang; // ✅ IMPORTANT
    msg.rate = 1;
    msg.pitch = 1;
    msg.volume = 1;

    const voices = speechSynthesis.getVoices();
    if (voices.length) {
        msg.voice =
            voices.find(v => v.lang === currentLang) ||
            voices[0];
    }

    speechSynthesis.cancel();
    speechSynthesis.speak(msg);
}
