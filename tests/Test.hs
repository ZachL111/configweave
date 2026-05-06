import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 61 84 20 22 7
  expect (score signalcase_1 == 77)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 59 93 10 23 5
  expect (score signalcase_2 == 91)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 76 89 24 20 7
  expect (score signalcase_3 == 114)
  expect (classify signalcase_3 == "review")
  let domainReview = ReviewItem 57 39 11 49
  expect (reviewScore domainReview == 169)
  expect (reviewLane domainReview == "ship")
