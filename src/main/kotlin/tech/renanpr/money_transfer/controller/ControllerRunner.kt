package tech.renanpr.money_transfer.controller

import spark.Spark.path
import tech.renanpr.money_transfer.controller.resources.HelloController

/**
 * Class to handle with rest controllers.
 */
open class ControllerRunner {

    companion object {

        /**
         * Initialize all the controllers here.
         */
        fun run() {
            path("/api/v1") {
                HelloController().init()
            }

        }
    }
}
