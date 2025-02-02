import 'dart:io';

void main() {
  Solution solution = Solution();
  solution.analyzeFile();
  solution.calculateLineWithHighestFrequency();
  solution.printHighestWordFrequencyAcrossLines();
}

class Solution {
  List<List<String>> highestFrequencyPerLine = [];
  int maxGlobalFrequency = 0;
  List<int> maxFrequencyLines = [];

  void analyzeFile() {
    String filePath = 'file.txt'; 

    try {
      List<String> lines = File(filePath).readAsLinesSync();

      for (int lineNumber = 0; lineNumber < lines.length; lineNumber++) {
        String line = lines[lineNumber].trim();
        if (line.isEmpty) continue;

        List<String> words = line.split(RegExp(r'\s+'));
        Map<String, int> wordCounts = {};

        // Count word frequencies
        for (String word in words) {
          wordCounts[word] = (wordCounts[word] ?? 0) + 1;
        }

        int maxFrequency = wordCounts.values.isEmpty
            ? 0
            : wordCounts.values.reduce((a, b) => a > b ? a : b);
        List<String> mostFrequentWords = wordCounts.entries
            .where((entry) => entry.value == maxFrequency)
            .map((entry) => entry.key)
            .toList();

        highestFrequencyPerLine.add(mostFrequentWords);

        if (maxFrequency > maxGlobalFrequency) {
          maxGlobalFrequency = maxFrequency;
        }
      }
    } catch (e) {
      print("Error reading file: $e");
    }
  }

  void calculateLineWithHighestFrequency() {
    for (int i = 0; i < highestFrequencyPerLine.length; i++) {
      if (highestFrequencyPerLine[i].length == maxGlobalFrequency) {
        maxFrequencyLines.add(i + 1);
      }
    }
  }

  void printHighestWordFrequencyAcrossLines() {
    print("The following words have the highest word frequency per line:");
    for (int i = 0; i < highestFrequencyPerLine.length; i++) {
      print("${highestFrequencyPerLine[i]} (appears in line #${i + 1})");
    }

  }
}
