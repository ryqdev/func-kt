import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

class FactorialTest {

    @Test
    fun `factorial of 0 should be 1`() {
        assertEquals(1, factorial(0))
    }

    @Test
    fun `factorial of 1 should be 1`() {
        assertEquals(1, factorial(1))
    }

    @Test
    fun `factorial of 5 should be 120`() {
        assertEquals(120, factorial(5))
    }

    @Test
    fun `factorial of 10 should be 3628800`() {
        assertEquals(3628800, factorial(10))
    }

}