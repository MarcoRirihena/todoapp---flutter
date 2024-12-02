class ToDo {
  String? id;
  String? todotext;
  bool isDone;

  ToDo({
    required this.id,
    required this.todotext,
    this.isDone = false,
  });

  static List<ToDo> todolist() {
    return [
      ToDo(
        id: '01',
        todotext: 'Beli Rokok',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todotext: 'Kerja Tugas',
        isDone: true,
      ),
      ToDo(
        id: '03',
        todotext: 'Kerja Kuis',
      ),
      ToDo(
        id: '04',
        todotext: 'Olahraga',
      ),
      ToDo(
        id: '05',
        todotext: 'Isi Galon',
      ),
      ToDo(
        id: '06',
        todotext: 'Cuci Baju',
      ),
    ];
  }
}
