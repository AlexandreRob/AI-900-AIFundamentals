# $predictionUrl="https://cognitive-13.cognitiveservices.azure.com/customvision/v3.0/Prediction/0072c214-a13a-4c71-a4d3-8da80447d06a/classify/iterations/groceries/url"
# $predictionKey = "9e412a537e9b4f64bf0172a40d1f2c6d"


# # Code to call Custom Vision service for image classification

# $img_num = 1
# if ($args.count -gt 0 -And $args[0] -in (1..3))
# {
#     $img_num = $args[0]
# }

# $img = "https://raw.githubusercontent.com/MicrosoftLearning/AI-900-AIFundamentals/main/data/vision/fruit-$($img_num).jpg"

# $headers = @{}
# $headers.Add( "Prediction-Key", $predictionKey )
# $headers.Add( "Content-Type","application/json" )

# $body = "{'url' : '$img'}"

# write-host "Analyzing image..."
# $result = Invoke-RestMethod -Method Post `
#           -Uri $predictionUrl `
#           -Headers $headers `
#           -Body $body | ConvertTo-Json -Depth 5

# $prediction = $result | ConvertFrom-Json

# Write-Host ("`n",$prediction.predictions[0].tagName, "`n")

############################################################################################## Prediction Pizza/Gateau 

$predictionUrl="https://cognitive-13.cognitiveservices.azure.com/customvision/v3.0/Prediction/d8ed78a0-b8f4-4189-8cdf-1bfe5339a4fc/classify/iterations/Prediction%20Pizza%2FGateau/url"
$predictionKey = "9e412a537e9b4f64bf0172a40d1f2c6d"


# Code to call Custom Vision service for image classification

$img_num = 11
if ($args.count -gt 0 -And $args[0] -in (1..3))
{
    $img_num = $args[0]
}

$img = "https://raw.githubusercontent.com/AlexandreRob/AI-900-AIFundamentals/main/data/vision/pred-$($img_num).jpg"

$headers = @{}
$headers.Add( "Prediction-Key", $predictionKey )
$headers.Add( "Content-Type","application/json" )

$body = "{'url' : '$img'}"

write-host "Analyzing image..."
$result = Invoke-RestMethod -Method Post `
          -Uri $predictionUrl `
          -Headers $headers `
          -Body $body | ConvertTo-Json -Depth 5

$prediction = $result | ConvertFrom-Json

Write-Host ("`n",$prediction.predictions[0].tagName, "`n")



# "https://github.com/AlexandreRob/AI-900-AIFundamentals/blob/main/data/vision/pred-11.jpg"

# "https://github.com/AlexandreRob/AI-900-AIFundamentals/tree/main/data/vision/pred-1.jpg"