# JetWallet Архитектура

# Концепция

1. TDD (Test-Driven Development)
2. Избавление от спагетти кода
3. Новая централизованная тема через ThemeData
4. Легко расширяемо и быстро редактируемое приложение
5. Фича изолированное

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
        ├── mappers # Различные мапперы для данного модуля
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