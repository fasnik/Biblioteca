from PySide6.QtSql import QSqlDatabase
class QtDB(QSqlDatabase):
    def __init__(self, database):
        super().__init__()
        self.db = self.addDatabase("QSQLITE");
        self.db.setDatabaseName(database);
        self.ok = self.db.open();