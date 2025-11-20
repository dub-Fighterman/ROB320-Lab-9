cmake_minimum_required(VERSION 3.10)
project(Lab8)
set(CMAKE_CXX_STANDARD 20)

add_executable(visitor 1_visitor/visitor_main.cpp)
target_include_directories(visitor PRIVATE 1_visitor)

add_executable(variant_visitor 1_visitor/variant_visitor_main.cpp)
target_include_directories(variant_visitor PRIVATE 1_visitor)

add_executable(strategy 2_strategy/strategy_main.cpp)
target_include_directories(strategy PRIVATE 2_strategy)

add_executable(std_function_strategy 2_strategy/std_function_strategy_main.cpp)
target_include_directories(std_function_strategy PRIVATE 2_strategy)

add_executable(command 3_command/command_main.cpp)
target_include_directories(command PRIVATE 3_command)

add_executable(observer 4_observer/observer_main.cpp)
target_include_directories(observer PRIVATE 4_observer)

# add_executable(adapter 4_adapter/adapter_main.cpp)
# target_include_directories(adapter PRIVATE 4_adapter)

add_executable(crtp 5_crtp/crtp_main.cpp)
target_include_directories(crtp PRIVATE 5_crtp)

add_executable(concepts 5_crtp/concepts_main.cpp)
target_include_directories(concepts PRIVATE 5_crtp)

add_executable(crtp_mixin 5_crtp/crtp_mixin_main.cpp)
target_include_directories(crtp_mixin PRIVATE 5_crtp)

add_executable(external_polymorphism 6_external_polymorphism/external_polymorphism_main.cpp)
target_include_directories(external_polymorphism PRIVATE 6_external_polymorphism)

# add_executable(bridge 7_bridge/bridge_main.cpp)
# target_include_directories(bridge PRIVATE 7_bridge)

# add_executable(prototype 8_prototype/prototype_main.cpp)
# target_include_directories(prototype PRIVATE 8_prototype)

add_executable(type_erasure 7_type_erasure/type_erasure_main.cpp)
target_include_directories(type_erasure PRIVATE 7_type_erasure)

add_executable(decorator 8_decorator/decorator_main.cpp)
target_include_directories(decorator PRIVATE 8_decorator)

add_executable(static_decorator 8_decorator/value_based_static_decorator_main.cpp)
target_include_directories(static_decorator PRIVATE 8_decorator)

add_executable(dynamic_decorator 8_decorator/value_based_dynamic_decorator_main.cpp)
target_include_directories(dynamic_decorator PRIVATE 8_decorator)

add_executable(singleton 9_singleton/singleton_main.cpp
        9_singleton/singleton.cpp)
target_include_directories(singleton PRIVATE 9_singleton)
