# JetWallet Архитектура

# Проблемы

1. Спагетти-код
2. Тяжело масштабируемая
3. Отсутствие централизованной темы ThemeData
4. Множество костылей
5. Виджеты спланированы некорректно

# Концепция

1. Легко расширяемо и быстро редактируемое приложение
2. TDD (Test-Driven Development)
3. BDD (Behaviour Driven Development**)**
4. Избавление от спагетти кода
5. Новая централизованная тема через ThemeData
6. Фича изолированное

# Структура проекта

```
├── core # Ядро приложения
│   ├── di # dependency injection, пакет injectable
│   ├── themes # ThemeData проекта
│   ├── exceptions
│   ├── helpers
│   ├── l10n # Локализация
│   ├── mixins
│   ├── router # Роутинг
│   └── services # Различные сервисы (Пуши, аналитика и т.д)
├── features
│   ├── app
│   │   ├── app_builder.dart
│   │   ├── app_initialization.dart
│   │   ├── app.dart
│   │   └── stage
│   ├── auth
│   │   ├── models # Локальные модели
│   │   │   └── model_name.dart
│   │   ├── store # Mobx store фичи
│   │   │   └── auth_store.dart
│   │   ├── helpers # Различные хелперы
│   │   │   └── auth_helper.dart
│   │   ├── tests # Тестирование
│   │   │   └── auth_test.dart
│   │   └── ui # Весь UI
│   │       ├── widgets
│   │       │    └── auth_widget.dart
│   │       └── auth_screen.dart
├── main.dart
├── utils
│   ├── alerts
│   └── log
├── widget_extends # Расширения для виджетов
└── widgets # Глобальные виджеты
```

# Структура плагина simple_networking

```
├── config # Какие-то константы и конфиги
│   ├── api_urls.dart
│   └── constants.dart
└── features/modules/services # Папка с основными модулями
    └── auth 
        ├── models # Модели
        │   └── model_name.dart
        ├── data_sources # Запросы post, get 
        │   └── auth_data_sources.dart
        ├── mappers/helpers # Различные мапперы и хелперы для данного модуля
        │   └── auth_mapper.dart
        ├── usecases/tests # Прописанные тесты для данного модуля
        │   └── use_case_for_some_event.dart
        └── repositories # 
            └── auth_repository.dart # Репозиторий для работы с данными полученными через/в data_sources
```

# Основные изменения

1. Отказ от хуков и riverpod
2. Переход на Mobx + GetIt
3. Тестирование
4. Новые правила отрисовки виджетов
5. Добавляем **dart_code_metrics**
6. Ориентированность на модульность и автономию каждого модуля
