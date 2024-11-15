import ComposableArchitecture

@Reducer
struct AddContactFeature {
  struct State: Equatable {
    var contact: Contact
  }
  enum Action {
    case cancelButtonTapped
    case delegate(Delegate)
    case saveButtonTapped
    case setName(String)
    enum Delegate: Equatable {
      case cancel
      case saveContact(Contact)
    }
  }
  var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .cancelButtonTapped:
        return .none

      case .delegate:
        return .none

      case .saveButtonTapped:
        return .none

      case let .setName(name):
        state.contact.name = name
        return .none
      }
    }
  }
}
