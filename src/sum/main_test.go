package main

import "testing"

func TestSum(t *testing.T) {
    total := Sum(5, 5)
    if total != 10 {
       t.Errorf("Soma incorreta, retornado: %d, esperado: %d.", total, 10)
    }
}