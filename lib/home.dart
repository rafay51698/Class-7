import 'package:class7/models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Todoee"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
                width: 300,
                height: 20,
                child: TextField(
                  controller: titleController,
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                height: 20,
                child: TextField(
                  controller: descriptionController,
                )),
            ElevatedButton(
                onPressed: () {
                  tasks.add(Task(
                      title: titleController.text,
                      description: descriptionController.text));
                  titleController.clear();
                  descriptionController.clear();
                  setState(() {});
                  // ignore: avoid_print
                  print(tasks);
                },
                child: const Text("submit")),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color.fromARGB(255, 196, 193, 193),
                        )
                      ]),
                  margin: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(tasks[index].title),
                    subtitle: Text(tasks[index].description),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Add todo "),
                  content: SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        SizedBox(
                            width: 300,
                            height: 20,
                            child: TextField(
                              controller: titleController,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: 300,
                            height: 20,
                            child: TextField(
                              controller: descriptionController,
                            )),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        tasks.add(Task(
                            title: titleController.text,
                            description: descriptionController.text));
                        titleController.clear();
                        descriptionController.clear();
                        Navigator.pop(context);
                        setState(() {});
                      },
                      child: const Text("submit"),
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
