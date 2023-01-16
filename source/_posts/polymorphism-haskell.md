---
title: Polymorphism in Haskell
date: 2023-01-16 14:52:28 
tags:
---

# Polymorphism in Haskell

polymorphism is enabling a function to work with different types.
Haskell mainly provides two types of polymorphism: parametric and ad-hoc.

## Parametric Polymorphism

It is introduce by the use of type variables in function.

```haskell
id :: a -> a
```

In most cases, it must be an input type variable.

* [yes] Outside property: Move it, duplicate it, or remove it.
* [nah] Inside property: look into it.
It has the most useless inner, and most general outer.

## Ad-hoc Polymorphism

ad-hoc polymorphism is introduce type variable with type class constraint.
A type class is a collection of functions that can be applied to values of different types.

```haskell
class Eq a where
  (==) :: a -> a -> Bool
instance Eq Int where
...
eq :: Eq a => a -> a -> Bool
```

It is less general than parametric polymorphism, but it is more flexible.
That you can provide additional functions (In the type class) for a ad-hoc type.

## Forall

haskell has forall construct. You need  turn on the `ExplicitForAll` extension.

```haskell
{-# LANGUAGE ExplicitForAll #-}
id :: forall a. a -> a
boo :: forall a. a -> (forall b. b)
foo :: forall a. (forall b. b -> b) -> a
```

* boo's latter forall b can float to the front, and it is equivalent to: `forall a b. a -> b`.
* oo's forall is in the left hand side so it could not float.  
  it is another topic called imperative type (Actually I think call it higher-order polymorphism is better).

## Imperative type
ff1 :: (forall b. b -> b) -> a
Imperative type is a type that we need to unify a type variable with a forall type.
The following is only possible with the `ImpredicativeTypes` extension.

```haskell
{-# LANGUAGE ImpredicativeTypes #-}
f :: Maybe (forall a. [a] -> [a]) -> Maybe ([Int], [Char])
f (Just g) = Just (g [3], g "hello")
f Nothing  = Nothing
```

It liberates the `Maybe a`'s type variable `a`

### How to type check it?

It requires more subtle treatment than the other types. [Quick Look](https://www.microsoft.com/en-us/research/publication/a-quick-look-at-impredicativity/) describes the algorithm.

### confusing example


You need to take care of the forall scoping when match

```haskell
ff1 :: (forall b. b -> b) -> a
ff1 x = undefined
foo1 = id ff1 -- rejected
```

This is rejected because ff1 is actually
`ff1 :: forall a. (forall b. b -> b) -> a`
matching id's `forall a. a` with is would match 
`(forall b. b -> b) -> a ~ a and a ~ a`

We can type a equivalent function

skolem
```
ff1 :: (forall b. b -> b) -> (forall a. a)
```


