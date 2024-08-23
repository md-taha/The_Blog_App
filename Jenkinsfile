pipeline {
    agent any

    environment {
        FLUTTER_HOME = "D:\\Flutter SDK"
        PATH = "${env.PATH};${FLUTTER_HOME}\\bin"
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Cloning the Git repository
                git 'https://github.com/md-taha/The_Blog_App.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Running Flutter packages get
                bat 'flutter pub get'
            }
        }

        stage('Run Tests') {
            steps {
                // Running Flutter tests
                bat 'flutter test'
            }
        }

        stage('Build APK') {
            steps {
                // Building the APK for Android
                bat 'flutter build apk --release'
            }
        }

        stage('Build iOS') {
            steps {
                // Building the iOS app (requires macOS)
                bat 'flutter build ios --release'
            }
        }

        stage('Archive Artifacts') {
            steps {
                // Archiving the APK and other build artifacts
                archiveArtifacts artifacts: '**/build/app/outputs/flutter-apk/*.apk', allowEmptyArchive: true
            }
        }

        // Optional: Deploy the app
        stage('Deploy') {
            steps {
                // Add deployment steps here (e.g., upload to Firebase App Distribution, Play Store, etc.)
                echo 'Deploying the app...'
            }
        }
    }

    post {
        always {
            // Clean up
            cleanWs()
        }
    }
}
