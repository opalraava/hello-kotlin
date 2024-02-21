/*
 * This Kotlin source file was generated by the Gradle 'init' task.
 */
package org.example.helloworld

class App {
    val greeting: String
        get() {
            return "Hello World!"
        }
    fun doIt(pair: Pair<String, String>) {
        println("-> ${pair.first}, ${pair.second} <-")
    }
}

fun main() {
    val pair = "Hello" to "World"
    println(App().greeting)
    App().doIt(pair)
}
