

class CloudStorageException implements Exception {
  const CloudStorageException();
}

class CouldNotCreateNoteException extends CloudStorageException {}

class CouldNotGetAllNotesException extends CloudStorageException {}

class CouldNotUpdateNoteException extends CloudStorageException {}

class CouldNotDeleteNoteException extends CloudStorageException {}

class CouldNotCreateGameException extends CloudStorageException {}

class CouldNotGetAllGamesException extends CloudStorageException {}

class CouldNotUpdateGameException extends CloudStorageException {}

class CouldNotDeleteGameException extends CloudStorageException {}