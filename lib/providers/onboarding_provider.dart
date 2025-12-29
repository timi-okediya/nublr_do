import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class OnboardingProvider extends ChangeNotifier {
  static const String _key = 'onboarding_done';
  final LocalStorage storage;

  bool _isDone = false;
  bool _isLoaded = false;

  bool get isDone => _isDone;
  bool get isLoaded => _isLoaded;

  OnboardingProvider(this.storage) {
    _loadOnboardingStorage();
  }

  Future<void> _loadOnboardingStorage() async {
    var onboardingDone = storage.getItem(_key);

    _isDone = onboardingDone == 'true';
    _isLoaded = true;

    notifyListeners();
  }

  void completeOnboarding() {
    _saveOnboardingStatus();
  }

  void _saveOnboardingStatus() {
    storage.setItem(_key, 'true');
    _isDone = true;
    notifyListeners();
  }
}