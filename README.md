# Notify Timer

A FiveM resource that displays timed notifications to players at specific intervals with a modern UI.

## 📋 Description

Notify Timer is a lightweight FiveM resource that automatically sends notifications to players at predefined time intervals. Perfect for server announcements, tips, and general information sharing.

## ✨ Features

- **Scheduled Notifications**: Automatically sends messages at specific time intervals
- **Modern UI**: Beautiful animated notifications with slide-in effects
- **Configurable Messages**: Easy-to-customize message system
- **Duplicate Prevention**: Ensures messages are only shown once per scheduled time
- **Test Command**: Built-in test command for previewing notifications
- **Responsive Design**: Clean, modern notification styling

## 🚀 Installation

1. Download the resource files
2. Place the `Aiben_notify_timer` folder in your server's `resources` directory
3. Add `ensure Aiben_notify_timer` to your `server.cfg`
4. Restart your server

## ⚙️ Configuration

Edit the `config.lua` file to customize your notifications:

```lua
Config = {}

-- Schedule messages by minute
-- Example: [2] = "Hello at 2 minutes", [5] = "Welcome at 5 minutes"
Config.TimedMessages = {
    [2] = "👋 Hello! Welcome to the server.",
    [4] = "🔧 Don't forget to use /commands to see what you can do!",
    [8] = "📢 Invite your friends to join and have fun!",
    [10] = "💡 Tip: Press F2 to open your inventory.",
    [15] = "🎯 Stay focused on your roleplay!",
    [20] = "📸 Need photos? Use the camera menu.",
    [25] = "💬 Join our Discord: discord.gg/yourserver",
    [30] = "🛠️ Use /report if you find any bugs."
}
```

### Configuration Options

- **TimedMessages**: A table where keys are minutes and values are the messages to display
- **Custom Intervals**: You can add any minute interval you want (e.g., `[60] = "Hourly message"`)
- **Emoji Support**: Full emoji support for enhanced visual appeal

## 🎮 Commands

- `/testmsg` - Test the notification system with a sample message

## 🎨 Customization

### Styling
Edit `html/style.css` to customize the notification appearance:

```css
.notification {
    background: rgba(30, 30, 30, 0.9); /* Background color */
    color: white; /* Text color */
    padding: 15px 20px; /* Padding */
    border-radius: 8px; /* Border radius */
    /* ... more styles */
}
```

### Animation
Modify the CSS animations in `html/style.css`:
- `slideIn`: Controls the entrance animation
- `fadeOut`: Controls the exit animation

## 📁 File Structure

```
Aiben_notify_timer/
├── fxmanifest.lua      # Resource manifest
├── config.lua          # Configuration file
├── client.lua          # Client-side logic
├── README.md           # This file
└── html/
    ├── ui.html         # HTML structure
    ├── style.css       # CSS styling
    └── script.js       # JavaScript functionality
```

## 🔧 Dependencies

- FiveM server
- No additional dependencies required

## 📝 Usage Examples

### Basic Setup
```lua
-- In config.lua
Config.TimedMessages = {
    [1] = "Welcome to the server!",
    [5] = "Remember to follow the rules!",
    [10] = "Need help? Ask an admin!"
}
```

### Advanced Configuration
```lua
-- Multiple messages with different intervals
Config.TimedMessages = {
    [2] = "👋 Welcome!",
    [5] = "🔧 Use /help for commands",
    [10] = "📢 Join our Discord!",
    [15] = "🎯 Stay in character!",
    [30] = "⏰ You've been playing for 30 minutes!",
    [60] = "🕐 Hourly reminder: Take a break!"
}
```

## 🐛 Troubleshooting

### Common Issues

1. **Notifications not appearing**
   - Check if the resource is properly started in `server.cfg`
   - Verify the HTML files are loading correctly

2. **Messages not showing at expected times**
   - Ensure the minute values in `Config.TimedMessages` are correct
   - Check that the client script is running

3. **UI not displaying properly**
   - Clear browser cache
   - Check for CSS conflicts with other resources

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Aiben** - FiveM Developer

---

## 🔄 Version History

- **v1.0.0** - Initial release with basic notification system

---

**Made with ❤️ for the FiveM community** 