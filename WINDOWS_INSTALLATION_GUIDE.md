# School Management System - Windows Installation Guide

## ✅ System Requirements

- **Operating System**: Windows 10 or later (64-bit)
- **RAM**: Minimum 4GB (8GB recommended)
- **Disk Space**: 500MB+ free space
- **Internet Connection**: Required for initial setup

## 📥 Installation Steps

### Option 1: Using the Packaged Application (Recommended)

1. **Download the Application**
   - Download `School-Management-System-Windows.tar.gz` from the provided link
   - Extract the archive to a folder (e.g., `C:\Program Files\SchoolManagement`)

2. **Run the Application**
   - Navigate to the extracted folder
   - Double-click `School Management System.exe`
   - The application will start automatically

3. **First-Time Setup**
   - The application will open in your default web browser
   - Log in with your Manus OAuth credentials
   - Configure your school settings
   - Start using the system

### Option 2: Manual Installation (For Developers)

1. **Install Prerequisites**
   - Download and install Node.js 18+ from https://nodejs.org/
   - Download and install Git from https://git-scm.com/

2. **Clone/Extract Project**
   ```bash
   cd C:\
   mkdir SchoolManagement
   cd SchoolManagement
   # Extract project files here
   ```

3. **Install Dependencies**
   ```bash
   npm install
   # or
   pnpm install
   ```

4. **Configure Database**
   - Set up MySQL database or use SQLite
   - Update `.env` file with database credentials

5. **Run Application**
   ```bash
   npm run electron-dev
   ```

## 🚀 Starting the Application

**After Installation:**
1. Click the desktop shortcut "School Management System"
2. Or navigate to the installation folder and run `School Management System.exe`
3. The application will open in a new window
4. Log in with your credentials

## 🔧 Troubleshooting

### Application Won't Start
- Ensure you have administrator privileges
- Check that port 3000 is not in use
- Restart your computer and try again

### Database Connection Issues
- Verify MySQL is running (if using MySQL)
- Check database credentials in `.env` file
- Ensure database server is accessible

### Port Already in Use
- Change the port in server configuration
- Or close other applications using port 3000

## 📞 Support

For issues or questions:
1. Check the system logs in the application
2. Review the comprehensive documentation
3. Contact system administrator

## 🔐 Security Notes

- Always use strong passwords
- Keep the application updated
- Regularly backup your database
- Use HTTPS in production environments

## 📊 Features Included

✅ Student Management
✅ Teacher Management
✅ Class/Section Management
✅ Attendance Tracking
✅ Grades & Results
✅ Fee Management
✅ Library Management
✅ Timetable Scheduling
✅ Announcements & Events
✅ SCERT Books & Question Papers
✅ PDF Export
✅ CSV Import/Export
✅ Real-time Notifications
✅ Advanced Analytics

## 🎯 Quick Start

1. **Add Students**: Go to Students → Add Student
2. **Add Teachers**: Go to Teachers → Add Teacher
3. **Create Classes**: Go to Classes → Add Class
4. **Mark Attendance**: Go to Attendance → Mark Attendance
5. **View Reports**: Go to Reports → View Dashboard

Enjoy using School Management System! 🎉
