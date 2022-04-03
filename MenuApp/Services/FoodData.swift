    //
    //  FoodData.swift
    //  MenuApp
    //
    //  Created by Konstantin Fomenkov on 25.03.2022.
    //

class FoodData {
    static let shared = FoodData()
    
    let names = [
        "Минестроне", "Сырный суп", "Грибной суп", "Пицца",
        "Лазанья", "Паста", "Медовик", "Сорбет", "Чай", "Капучино"
    ]
    let images = [
        "minestrone", "cheese", "mushroom", "pizza", "lasagna",
        "pasta", "medovik", "sorbet", "tea", "coffee"
    ]
    let calories = [40, 35, 29, 55, 65, 33, 60, 15, 5, 6]
    let prices = [300, 290, 180, 380, 350, 240, 150, 100, 80, 90]
    let weights = [300, 290, 250, 280, 250, 240, 150, 100, 200, 150]
    let categories: [CategoryType] = [
        .soups, .soups, .soups, .mains, .mains, .mains,
        .desserts, .desserts, .drinks, .drinks
    ]
    let descriptions = [
            """
           СУП МИНЕСТРОНЕ
           Классический итальянский овощной суп, подается с помидорами черри,
           соусом Песто и пармезаном.
           Большое количество разнообразных овощей, фасоль и паста -
           делают этот суп невероятно наваристым, ароматным и очень вкусным.
           """,
            """
           СЫРНЫЙ СУП
           Сливки, молоко, плавленый сыр, картофель. Подается с сухариками.
           Сытный и пряный суп придется по вкусу даже тем,
           кто ранее был равнодушен к сырам и блюдам на их основе.
           """,
            """
           ГРИБНОЙ КРЕМ СУП
           Из белых грибов и шампиньонов со сливками.
           Подаётся с пшеничными гренками.
           """,
            """
           ПИЦЦА КАПРИЧОЗА
           С моцареллой, пармезаном, горгонзолой, шампиньонами,
           ветчиной, печёным перцем, оливками, орегано, базиликом
           и фирменным томатным соусом.
           """,
            """
           МЯСНАЯ ЛАЗАНЬЯ
           Фарш из телятины, тесто для пасты, соус Бешамель: мука,
           сливочное масло, мускат.
           Томатный соус, каперсы, базилик.
           """,
            """
           ТАЛЬЯТЕЛЛЕ С КУРИНЫМ ФИЛЕ И ЛИСТЬЯМИ ШПИНАТА
           в сливочном соусе с шампиньонами,
           сладкими томатами и сыром Грана Падано.
           """,
            """
           МЕДОВИК
           с карамельно-сливочным кремом. В состав теста входят измельченные грецкие орехи.
           Крем с вареной сгущенкой приготовлен на основе сметаны.
           """,
            """
           ЛАЙМОВО-ЯБЛОЧНЫЙ СОРБЕТ С БАЗИЛИКОМ
           Яркий охлаждающий десерт с насыщенным вкусом и цветом.
           Этот десерт понравится и взрослым, и детям.
           """,
            """
           ЦВЕТЫ ЧАЙНОГО ЖАСМИНА И ЛИЛИИ
           Это зелёный чай с добавлением небольшого количества
           жасмина. Цветок лилии придаёт настою красноватый оттенок,
           а вкусу — сладость и пряность.
           """,
            """
           КАПУЧИНО ГРАНДЕ
           Напиток на основе эспрессо со вспененным молоком.
           Вкус капучино идеально сбалансирован.
           """
    ]
    private init() {}
}
