package com.bsuir.FactorySystem.Entities;

public enum OrderStatus {
    CREATED("создано"), PLANNED("запланировано"), ASSEMBLY("сборка"), ASSEMBLY_FINISHED("сборка окончена"),
    PAINTING("покраска"), PAINTING_FINISHED("покраска окончена"), PACKAGING("упаковка"), FINISHED("выполнен");
    private String name;

    OrderStatus(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
