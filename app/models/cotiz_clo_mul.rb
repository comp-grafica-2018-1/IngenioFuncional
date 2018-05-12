class CotizCloMul < ApplicationRecord
	expresionRegularEmailValido = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :alturaCloMul, presence: true
	validates :anchuraCloMul, presence: true
	validates :colorCloMul, presence: true
	validates :materialCloMul, presence: true
	validates :tipManijasCloMul, presence: true
	validates :numRepisasCloMul, presence: true
	validates :cantidad, presence: true
	validates :correo, format: {with: expresionRegularEmailValido}
	validates :nombre, length: {minimum: 3, maximum: 30}
end
