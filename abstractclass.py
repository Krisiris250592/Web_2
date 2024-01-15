from abc import ABC, abstractmethod


class BookInterface(ABC):
    @abstractmethod
    def save_to_file(self,file):
        pass

    @abstractmethod
    def load_from_file(self,file):
        pass

    @abstractmethod
    def show_all(self):
        pass
