# 🐇🦊 Predator-Prey Model in Octave

This repository contains a simple Octave implementation of a predator-prey model using a system of differential equations. It simulates the dynamic interaction between a prey population (e.g., rabbits) and a predator population (e.g., foxes).

## 📊 Features

- Simulates population dynamics over time using `ode45`
- Generates two plots:
  - Population vs Time
  - Phase Portrait (Prey vs Predator)

## 🧮 Mathematical Model

The system is defined as:

$$ dx/dt = x - 0.5xy $$
$$ dy/dt = -0.75y + 0.25xy $$


Where:
- `x` is the prey population
- `y` is the predator population

## ▶️ How to Run

1. Open GNU Octave.
2. Run the script:

```octave
predator_prey_simulation
