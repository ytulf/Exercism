class HighScores(object):
    def __init__(self, scores):
        self.scores = scores

    def latest(self):
        ''' Fonction pour renvoyer la dernière valeur du tableau'''
        return self.scores[-1]

    def personal_best(self):
        ''' Fonction pour renvoyer la valeur maximum'''
        return max(self.scores)

    def personal_top_three(self):
        ''' Fonction pour renvoyer les trois meilleures valeurs'''
        return sorted(self.scores, reverse=True)[0:3]
