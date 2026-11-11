# Constraints for AI assistant / desktop-pet / phone-agent plans

Verify before reuse; prices and tiers drift. Use to build feasible `choices`.

## "100% free" traps
- Rive: editor free, exporting needs a paid plan. Spine paid. Live2D free tier capped (parts, commercial use). Free rig: Godot Skeleton2D (MIT), Inochi2D.
- nut.js: prebuilt packages paid; self-compile only.
- Porcupine wake word: free tier closed. openWakeWord pretrained models + its training negatives are CC BY-NC-SA. Free alternatives: sherpa-onnx keyword spotting (Apache, custom phrase without training), microWakeWord.
- Gemini API free: trains on data, human reviewers, 18+. Groq free: 18+, BYOK, no training. Cerebras: trial only. OpenRouter :free ~50 req/day.
- Kokoro TTS Apache but Spanish needs espeak-ng (GPL-3): ship as separate component. F5-TTS/XTTS-v2 non-commercial. Moonshine: streaming non-English models MIT, old "Base" non-English non-commercial.
- Code signing on Windows: Azure Artifact Signing not for individuals in Mexico; SignPath needs existing reputation; Microsoft Store individual account free (ID + selfie) avoids SmartScreen.

## Android distribution of agent apps
- Google Play forbids AccessibilityService for autonomous AI-planned actions; SMS/call log only for default handler apps. Plan for GitHub Releases + Obtainium, later F-Droid (100% FOSS, no Play Services/Firebase, network services flagged as anti-feature). IzzyOnDroid rejects AI-built / LLM-frontend apps.
- Restricted settings (Android 13+) block accessibility, notification listener, overlay, SMS for sideloaded APKs; user unlocks via App info → ⋮ → "Allow restricted settings" after first attempt. adb grants skip it but normal users have no adb.
- Developer verification for sideloads: rolling out by country; global (incl. Mexico) in 2027; full account US$25 + ID, free hobbyist account capped at few devices.
- Android 14+: foreground service needs a type (specialUse, microphone); Android 15: start FGS from background only with a visible overlay.

## WhatsApp for a personal number
- Official Cloud API needs Meta Business; useless for personal accounts. Baileys/whatsapp-web.js/whatsmeow violate ToS (ban risk).
- Lowest-risk auto-reply: Android NotificationListener + RemoteInput direct reply (only chats with a live notification). Own outgoing messages are not in notifications: read them via AccessibilityService or a one-time chat export (.txt).
- Style cloning: start with RAG/few-shot over exported own messages; LoRA (Unsloth) later. Safety defaults: allowlist, never groups, bot marker, rate limits, never initiate.

## Desktop pet on Windows
- Godot `mouse_passthrough_polygon` clips drawing on Windows → small window following the pet. Electron is the only one with native selective click-through; Tauri all-or-nothing.
- SendInput cannot drive elevated (admin) windows (UIPI). Moving desktop icons must save/restore positions.
- Injecting input while anti-cheat games run (Fortnite EAC, Roblox) risks bans: detect fullscreen game → sleep, no input, unload GPU model.
- 8 GB VRAM: one 4B LLM on GPU + voice on CPU fits; all on GPU does not. Game mode: unload model, fall back to small CPU model or BYOK API.
