String authErrorCheck(String error) {
  switch (error) {
    case 'invalid-email' || 'invalid-credential' || 'wrong-password':
      return 'The email or the password you entered is incorrect.';
    case 'credential-already-in-use':
      return 'The credential you entered is already being used.';
    case 'channel-error':
      return 'The text boxes were not filled propperly or a connection error occured';
    default:
      return error;
  }
}
