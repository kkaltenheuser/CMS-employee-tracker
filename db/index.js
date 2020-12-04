const connetion = require("./connection");

class DB {
    constructor(connection) {
        this.connection = connection;
    }
}

findAllEmployees(){
    return this.connection.query(
        "SELECT employee.id, employee.first_name"
    );
}
findAllPossibleManagers(employeeId) {
    return this.connection.query(
        "SELECT id, first_name, last_name FROM employee WHERE id !- ?",
        employeeId
    )
};

createEmployee(employee) {
    return this.connection.query("INSERT INTO employee SET ?", employee);

}





module.exports = new DB(connection);