import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xfff5f7ff),
      ),
      home: const HomePage(),
    );
  }
}

// ---------------- HOME PAGE ----------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 30),

                // Profile Avatar
                Container(
                  padding: const EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.indigo,
                      width: 4,
                    ),
                  ),

                  child: const CircleAvatar(
                    radius: 80,
                    backgroundColor: Color(0xffdfe5ff),

                    child: Icon(
                      Icons.person,
                      size: 90,
                      color: Colors.indigo,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Hello, I am',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'GAYATRI',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Computer Science Engineering Student',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 15),

                const SizedBox(
                  width: 600,

                  child: Text(
                    'I am passionate about technology, programming '
                    'and creating applications that solve real-world problems.',

                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Buttons
                Wrap(
                  spacing: 15,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,

                  children: [

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) =>
                                const AboutPage(),
                          ),
                        );
                      },

                      icon: const Icon(Icons.person),

                      label: const Text(
                        'About Me',
                      ),

                      style: buttonStyle(),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) =>
                                const ProjectsPage(),
                          ),
                        );
                      },

                      icon: const Icon(Icons.work),

                      label: const Text(
                        'My Projects',
                      ),

                      style: buttonStyle(),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                const Text(
                  '© 2026 My Portfolio',

                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- ABOUT PAGE ----------------

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                const Text(
                  'About Me',

                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'I am a Computer Science Engineering student '
                  'interested in software development and modern technologies. '
                  'I enjoy learning new programming concepts and developing '
                  'creative applications.',

                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'My Skills',

                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Wrap(
                  spacing: 15,
                  runSpacing: 15,

                  children: [

                    skillCard(
                      Icons.code,
                      'Python',
                    ),

                    skillCard(
                      Icons.phone_android,
                      'Flutter',
                    ),

                    skillCard(
                      Icons.code,
                      'Dart',
                    ),

                    skillCard(
                      Icons.storage,
                      'SQL',
                    ),

                    skillCard(
                      Icons.web,
                      'Web Development',
                    ),

                    skillCard(
                      Icons.psychology,
                      'Problem Solving',
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                const Text(
                  'Areas of Expertise',

                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                expertiseCard(
                  Icons.phone_android,
                  'Mobile App Development',
                  'Building responsive and user-friendly mobile applications.',
                ),

                expertiseCard(
                  Icons.web,
                  'Web Development',
                  'Creating clean and responsive websites.',
                ),

                expertiseCard(
                  Icons.code,
                  'Programming',
                  'Developing programs using Python, Dart and other languages.',
                ),

                const SizedBox(height: 25),

                Center(
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) =>
                              const ProjectsPage(),
                        ),
                      );
                    },

                    style: buttonStyle(),

                    child: const Text(
                      'View My Projects',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- PROJECTS PAGE ----------------

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                const Text(
                  'My Projects',

                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Here are some of my projects:',

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                // Responsive project layout
                LayoutBuilder(
                  builder: (context, constraints) {

                    int columns = 1;

                    if (constraints.maxWidth > 700) {
                      columns = 2;
                    }

                    return GridView.count(
                      crossAxisCount: columns,

                      shrinkWrap: true,

                      physics:
                          const NeverScrollableScrollPhysics(),

                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                      childAspectRatio: 1.5,

                      children: [

                        // PROJECT 1
                        projectCard(
                          Icons.newspaper,
                          'News Bias Detection',
                          'Detects bias in news articles using natural language processing.',
                        ),

                        // PROJECT 2
                        projectCard(
                          Icons.mic,
                          'Deepfake Audio Detection',
                          'Identifies AI-generated or manipulated audio using deep learning.',
                        ),

                        // PROJECT 3
                        projectCard(
                          Icons.directions_run,
                          'Human Action Recognition',
                          'Recognizes human activities from video using computer vision.',
                        ),

                        // PROJECT 4
                        projectCard(
                          Icons.school,
                          'Student Web',
                          'A responsive web platform designed for students and academic activities.',
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 30),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    style: buttonStyle(),

                    child: const Text(
                      'Back to Home',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- SKILL CARD ----------------

Widget skillCard(
  IconData icon,
  String title,
) {

  return Container(
    width: 160,

    padding: const EdgeInsets.all(18),

    decoration: BoxDecoration(
      color: Colors.white,

      borderRadius:
          BorderRadius.circular(15),

      boxShadow: [
        BoxShadow(
          color:
              Colors.black.withOpacity(0.08),

          blurRadius: 8,

          offset:
              const Offset(0, 4),
        ),
      ],
    ),

    child: Column(
      children: [

        Icon(
          icon,
          size: 35,
          color: Colors.indigo,
        ),

        const SizedBox(height: 10),

        Text(
          title,

          textAlign: TextAlign.center,

          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

// ---------------- EXPERTISE CARD ----------------

Widget expertiseCard(
  IconData icon,
  String title,
  String description,
) {

  return Card(
    margin:
        const EdgeInsets.only(bottom: 15),

    elevation: 3,

    child: ListTile(
      contentPadding:
          const EdgeInsets.all(15),

      leading: CircleAvatar(
        backgroundColor:
            Colors.indigo.shade50,

        child: Icon(
          icon,
          color: Colors.indigo,
        ),
      ),

      title: Text(
        title,

        style: const TextStyle(
          fontWeight:
              FontWeight.bold,
        ),
      ),

      subtitle: Padding(
        padding:
            const EdgeInsets.only(top: 5),

        child: Text(
          description,
        ),
      ),
    ),
  );
}

// ---------------- PROJECT CARD ----------------

Widget projectCard(
  IconData icon,
  String title,
  String description,
) {

  return Card(
    elevation: 5,

    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.circular(18),
    ),

    child: Padding(
      padding:
          const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          // Project icon
          CircleAvatar(
            radius: 28,

            backgroundColor:
                Colors.indigo.shade50,

            child: Icon(
              icon,

              size: 30,

              color: Colors.indigo,
            ),
          ),

          const SizedBox(height: 15),

          // Project title
          Text(
            title,

            style: const TextStyle(
              fontSize: 19,

              fontWeight:
                  FontWeight.bold,

              color: Colors.indigo,
            ),
          ),

          const SizedBox(height: 8),

          // One-line project description
          Text(
            description,

            style: const TextStyle(
              color: Colors.grey,

              height: 1.4,
            ),
          ),
        ],
      ),
    ),
  );
}

// ---------------- BUTTON STYLE ----------------

ButtonStyle buttonStyle() {

  return ElevatedButton.styleFrom(
    backgroundColor:
        Colors.indigo,

    foregroundColor:
        Colors.white,

    padding:
        const EdgeInsets.symmetric(
      horizontal: 22,
      vertical: 14,
    ),

    shape:
        RoundedRectangleBorder(
      borderRadius:
          BorderRadius.circular(25),
    ),
  );
}