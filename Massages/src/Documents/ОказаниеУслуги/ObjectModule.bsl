// @strict-types


#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	СуммаИтого = Услуги.Итог("Сумма");

КонецПроцедуры

Процедура ОбработкаПроведения(Отказ,Режим)

	Движения.Взаиморасчеты.Записывать = Истина;
	Движение = Движения.Взаиморасчеты.ДобавитьРасход();
	Движение.Период = Дата;
	Движение.Клиент = Клиент;
	Движение.Сумма = Услуги.Итог("Сумма");

КонецПроцедуры

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Код процедур и функций

#КонецОбласти

#Область Инициализация

#КонецОбласти

#КонецЕсли
