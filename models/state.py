class State:
    def __init__(self, date_start, date_end, state_value):
        self.date_start = date_start
        self.date_end = date_end
        self.state_value = state_value 



    def __eq__(self, other):
        return (
            isinstance(other, State) and
            self.date_start == other.date_start and
            self.date_end == other.date_end and
            self.state_value == other.state_value
        )

def __repr__(self):
    return f"State({self.date_start}, {self.date_end}, {self.state_value})"