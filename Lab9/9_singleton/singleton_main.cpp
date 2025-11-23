#include "singleton.hpp"

int main() {
    // TODO: Make a fake database and set the Singleton interface to use it.
    FakeDataBase fake_db;
    set_persistence_interface(&fake_db);

    // Get the Singleton interface and use it in downstream code.
    PersistenceInterface* database = get_persistence_interface();
    database->read();
    database->write();
}