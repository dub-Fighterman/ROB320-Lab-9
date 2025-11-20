#!/usr/bin/env bash

OUT_DIR="submit"
mkdir -p "$OUT_DIR"

FILES=(
  "1_visitor/visitor.hpp"                        "visitor.hpp"
  "1_visitor/visitor_main.cpp"                   "visitor_main.cpp"
  "1_visitor/variant_visitor.hpp"                "variant_visitor.hpp"
  "1_visitor/variant_visitor_main.cpp"           "variant_visitor_main.cpp"

  "2_strategy/strategy.hpp"                      "strategy.hpp"
  "2_strategy/strategy_main.cpp"                 "strategy_main.cpp"
  "2_strategy/std_function_strategy.hpp"         "std_function_strategy.hpp"
  "2_strategy/std_function_strategy_main.cpp"    "std_function_strategy_main.cpp"

  "3_command/command.hpp"                      "command.hpp"
  "3_command/command_main.cpp"                 "command_main.cpp"

  "4_observer/observer.hpp"                      "observer.hpp"
  "4_observer/observer_main.cpp"                 "observer_main.cpp"

  "6_external_polymorphism/external_polymorphism.hpp"     "external_polymorphism.hpp"
  "6_external_polymorphism/external_polymorphism_main.cpp" "external_polymorphism_main.cpp"

  "7_type_erasure/type_erasure.hpp"              "type_erasure.hpp"
  "7_type_erasure/type_erasure_main.cpp"         "type_erasure_main.cpp"

  "8_decorator/decorator.hpp"                    "decorator.hpp"
  "8_decorator/decorator_main.cpp"               "decorator_main.cpp"
  "8_decorator/value_based_dynamic_decorator.hpp"         "value_based_dynamic_decorator.hpp"
  "8_decorator/value_based_dynamic_decorator_main.cpp"    "value_based_dynamic_decorator_main.cpp"
  "8_decorator/value_based_static_decorator.hpp"          "value_based_static_decorator.hpp"
  "8_decorator/value_based_static_decorator_main.cpp"     "value_based_static_decorator_main.cpp"

  "9_singleton/singleton.hpp"                    "singleton.hpp"
  "9_singleton/singleton_main.cpp"               "singleton_main.cpp"
)

echo "Collecting files into $OUT_DIR ..."

i=0
while [ $i -lt ${#FILES[@]} ]; do
    SRC="${FILES[$i]}"
    DST="${FILES[$((i+1))]}"
    i=$((i+2))

    if [ -f "$SRC" ]; then
        cp "$SRC" "$OUT_DIR/$DST"
        echo "Copied: $SRC → $OUT_DIR/$DST"
    else
        echo "WARNING: Missing file: $SRC"
    fi
done

echo "Done!"
