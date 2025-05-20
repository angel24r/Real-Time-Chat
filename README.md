# Real-Time Chat with Laravel and Pusher

This is a real-time chat project built with [Laravel](https://laravel.com) and [Pusher](https://pusher.com). It allows users to send and receive messages instantly using Pusher private channels.

## 🚀 Features

- User authentication
- Real-time message sending with Pusher
- Simple chat interface
- Automatic updates without page reload
- Responsive design

## 🛠 Requirements

- PHP >= 8.1
- Composer
- Laravel >= 10.x
- A [Pusher.com](https://pusher.com) account

## 🔧 Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/angel24r/Real-Time-Chat.git
   cd Real-Time-Chat
   ```

2. Install PHP dependencies:

   ```bash
   composer install
   ```

3. Copy and set up your `.env` file:

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. Configure your Pusher credentials in the `.env` file:

   ```env
   BROADCAST_DRIVER=pusher

   PUSHER_APP_ID=your-app-id
   PUSHER_APP_KEY=your-app-key
   PUSHER_APP_SECRET=your-app-secret
   PUSHER_APP_CLUSTER=your-cluster
   ```

5. Start the development server:

   ```bash
   php artisan serve
   ```

## 💬 How It Works

- Users can log in and access the chat interface.
- Messages are broadcast using Laravel events and delivered via Pusher.
- The chat view listens to events using Laravel Echo and updates the conversation in real time.

## 🧪 Useful Commands

- Start development server:
  ```bash
  php artisan serve
  ```

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Developed by [@angel24r](https://github.com/angel24r)
