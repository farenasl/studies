import Cocoa
import CreateML

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/farenasl/Code/studies/Udemy/Swift/TweetSentimentModelMaker.playground/Resources/twitter-sanders-apple3.csv"))

let(trainingData, testingData) = data.randomSplit(by: 0.8, seed: 5)

let sentimentClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: "text", labelColumn: "class")

let evaluationMetrics = sentimentClassifier.evaluation(on: trainingData, textColumn: "text", labelColumn: "class")

let evaluationAccuracy = (1.0 - evaluationMetrics.classificationError) * 100

let metadata = MLModelMetadata(author: "Fabián Arenas", shortDescription: "A model trained to classify sentiment on Tweets", license: nil, version: "1.0", additional: nil)

try sentimentClassifier.write(to: URL(fileURLWithPath: "/Users/farenasl/Code/studies/Udemy/Swift/TweetSentimentModelMaker.playground/Resources/TweetSentimentClassifier.mlmodel"))

try sentimentClassifier.prediction(from: "@Apple is terrible company!")
try sentimentClassifier.prediction(from: "I just found the best restaurant ever, and it's @DuckandWaffle")
try sentimentClassifier.prediction(from: "I think @CocaCola ads are just ok.")
