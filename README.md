# VakeelFriendly - Legal Practice Management Platform

🚀 **Live Demo**: [Deploy to see live link]

A comprehensive legal practice management webapp designed specifically for advocates and lawyers in India. Built with Next.js 15, TypeScript, and Tailwind CSS.

## ✨ Features

### For Advocates
- **User Registration & Authentication**: Secure advocate registration with professional verification
- **Case Management**: Create, track, and manage legal cases with timeline tracking
- **Client Management**: Add clients, generate secure portal credentials
- **Document Management**: Upload, organize, and share legal documents
- **Court Scheduling**: Calendar integration with deadline reminders
- **Billing & Time Tracking**: Invoice generation and time logging
- **Legal Research**: Access to legal databases and precedent finder
- **Collaboration**: Network with other lawyers and share knowledge

### For Clients
- **Secure Client Portal**: Access case information with unique credentials
- **Case Status Tracking**: Real-time updates on case progress
- **Document Access**: View and download case-related documents
- **Query System**: Submit questions and get responses from advocates
- **Appointment Scheduling**: Book consultations with lawyers

## 🛠️ Technology Stack

- **Framework**: Next.js 15.4.6 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS with custom legal-themed design system
- **Icons**: Heroicons and Lucide React
- **State Management**: React hooks and context
- **Build Tool**: Next.js built-in webpack configuration

## 🛠️ Technology Stack

- **Framework**: Next.js 15.4.6 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS with custom legal-themed design system
- **Icons**: Heroicons and Lucide React
- **State Management**: React hooks and context
- **Database**: (To be implemented - Prisma with PostgreSQL recommended)
- **Authentication**: (To be implemented)

## 📁 Project Structure

```
src/
├── app/
│   ├── (dashboard)/          # Dashboard and main app routes
│   ├── (auth)/              # Authentication routes
│   ├── api/                 # API routes
│   ├── cases/               # Case management pages
│   ├── clients/             # Client management pages
│   ├── documents/           # Document management
│   ├── calendar/            # Calendar and scheduling
│   ├── billing/             # Billing and invoicing
│   ├── research/            # Legal research tools
│   ├── collaboration/       # Peer collaboration
│   ├── globals.css          # Global styles
│   ├── layout.tsx           # Root layout
│   └── page.tsx             # Landing page
├── components/
│   ├── ui/                  # Reusable UI components
│   ├── layout/              # Layout components
│   ├── forms/               # Form components
│   └── features/            # Feature-specific components
├── lib/                     # Utilities and configurations
├── types/                   # TypeScript type definitions
└── hooks/                   # Custom React hooks
```

## 🚦 Getting Started

### Prerequisites
- Node.js 18.x or later
- npm or yarn package manager

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd vakeelfriendly
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

4. Open [http://localhost:3000](http://localhost:3000) in your browser.

## 📱 Mobile Support

VakeelFriendly is built with a mobile-first approach and includes:
- Responsive design for all screen sizes
- Touch-friendly interfaces
- Progressive Web App (PWA) capabilities
- Offline functionality for critical features

## 🎨 Design System

The application uses a custom design system optimized for legal professionals:

### Color Palette
- **Primary**: Professional blues (#0ea5e9 - #0c4a6e)
- **Secondary**: Neutral grays (#fafaf9 - #1c1917)
- **Legal Theme**: Gold (#d4af37), Navy (#1e3a8a), Burgundy (#7c2d12)

### Components
- Pre-built UI components with consistent styling
- Tailwind CSS utility classes
- Custom component classes (btn-primary, card, input-field, etc.)
- Accessible design with proper ARIA labels

## � Getting Started

### Prerequisites
- Node.js 18+ installed
- npm or yarn package manager

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/vakeelfriendly.git
   cd vakeelfriendly
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env.local
   ```
   Edit `.env.local` with your configuration.

4. **Run the development server**
   ```bash
   npm run dev
   ```

5. **Open in browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

## 🚀 Deployment

### Deploy to Vercel (Recommended)

1. **Push to GitHub** (if not already done)
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/vakeelfriendly.git
   git push -u origin main
   ```

2. **Deploy to Vercel**
   - Visit [vercel.com](https://vercel.com)
   - Sign up/Login with GitHub
   - Click "Import Project"
   - Select your VakeelFriendly repository
   - Deploy with one click
   - Your app will be live at `https://your-app-name.vercel.app`

### Alternative Free Deployment Options

#### Netlify
1. Build the project: `npm run build`
2. Upload the `.next` folder to Netlify
3. Configure build settings

#### Railway
1. Connect GitHub repository
2. Auto-deploy on push
3. Free tier includes database

#### Render
1. Connect GitHub repository  
2. Auto-deploy on commits
3. Free static site hosting

## 📋 Environment Variables

Create a `.env.local` file:

```env
# App Configuration
NEXT_PUBLIC_APP_NAME="VakeelFriendly"
NEXT_PUBLIC_APP_URL="http://localhost:3000"

# Database (when implemented)
# DATABASE_URL="your_database_url"

# Authentication (when implemented)  
# NEXTAUTH_SECRET="your_secret_key"
# NEXTAUTH_URL="your_app_url"
```

## 🔐 User Flow

### Advocate Workflow
1. **Register**: Complete 3-step registration (Personal → Professional → Account)
2. **Login**: Access advocate dashboard
3. **Add Clients**: Create client profiles and generate portal credentials
4. **Manage Cases**: Create and track legal cases
5. **Client Communication**: Share credentials and manage client interactions

### Client Workflow
1. **Receive Credentials**: Get Client ID and password from advocate
2. **Portal Access**: Login to secure client portal
3. **Case Tracking**: View case status and updates
4. **Submit Queries**: Ask questions and receive responses
5. **Document Access**: Download case-related documents

## 🌟 Key Features Implemented

- ✅ **Responsive Design**: Mobile-first approach with Tailwind CSS
- ✅ **Multi-step Registration**: Professional advocate onboarding
- ✅ **Secure Authentication**: Separate portals for advocates and clients
- ✅ **Client Credential Generation**: Automatic secure credential creation
- ✅ **Case Management**: Complete CRUD operations for legal cases
- ✅ **Client Portal**: Dedicated secure access for clients
- ✅ **Modern UI/UX**: Legal-themed design with professional aesthetics
- ✅ **Form Validation**: Comprehensive client and server-side validation
- ✅ **Type Safety**: Full TypeScript implementation

## 🗺️ Roadmap

### Phase 1 (Current)
- [x] Project setup and core structure
- [x] Basic UI components and layout
- [x] Case management interface
- [ ] Authentication system
- [ ] Client management

### Phase 2
- [ ] Document management and templates
- [ ] Calendar integration
- [ ] Billing and time tracking
- [ ] Legal research tools

### Phase 3
- [ ] Peer collaboration features
- [ ] AI-powered assistance
- [ ] Mobile app optimization
- [ ] Advanced analytics

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

Built with ❤️ for the legal community to bridge the gap between traditional legal practice and modern technology.

## 📞 Support

For support and questions, please contact:
- Email: support@vakeelfriendly.com
- Documentation: [docs.vakeelfriendly.com](https://docs.vakeelfriendly.com)

---

**VakeelFriendly** - Empowering Legal Excellence Through Technology
