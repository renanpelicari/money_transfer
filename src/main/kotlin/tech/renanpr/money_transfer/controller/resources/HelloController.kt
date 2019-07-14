package tech.renanpr.money_transfer.controller.resources

import com.google.gson.Gson
import spark.Spark.*

class HelloController {

    fun init() {
        get("/hello") { req, res ->
            Gson().toJson("bla")
        }

    }
}
